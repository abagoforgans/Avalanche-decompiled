contract main {




// =====================  Runtime code  =====================


#
#  - sub_133f1f50(?)
#
const nowTime = block.timestamp


address owner;
address stakeTokenAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address profitorAddress;
uint256 size;
uint256 sub_9b5d5c7a;
uint256 sub_102a2f8c;
uint256 leftMiningAmount;
uint256 minAmount;
uint256 totalAmount;
uint256 totalPledge;
uint256 maxPreMiningAmount;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
mapping of struct sub_a4804661;
mapping of address tokenToOwner;
mapping of struct sub_026c77d0;
address stor20;
array of struct stor21;
array of struct stor38878206584692966203415385907871375197469080758325516314230789535345649042549;

function sub_026c77d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    return bool(sub_026c77d0[address(arg1)].field_0), 
           sub_026c77d0[address(arg1)].field_256,
           sub_026c77d0[address(arg1)].field_512,
           sub_026c77d0[address(arg1)].field_768,
           sub_026c77d0[address(arg1)].field_1024
}

function sub_102a2f8c(?) payable {
    return sub_102a2f8c
}

function getsize() payable {
    return size
}

function isDIS() payable {
    return bool(uint8(stor2.field_160))
}

function sub_40666da3(?) payable {
    return sub_026c77d0[msg.sender].field_512
}

function stakeToken() payable {
    return stakeTokenAddress
}

function maxPreMiningAmount() payable {
    return maxPreMiningAmount
}

function leftMiningAmount() payable {
    return leftMiningAmount
}

function getTotalAmount() payable {
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    return totalAmount
}

function getTotalPledge() payable {
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    return totalPledge
}

function owner() payable {
    return owner
}

function sub_9b5d5c7a(?) payable {
    return sub_9b5d5c7a
}

function sub_a4804661(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_a4804661[arg1].field_0), 
           sub_a4804661[arg1].field_256,
           sub_a4804661[arg1].field_512,
           sub_a4804661[arg1].field_768,
           sub_a4804661[arg1].field_1024
}

function tokenToOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(tokenToOwner[arg1])
}

function getMinAmount() payable {
    return minAmount
}

function getProfitor() payable {
    return profitorAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_90cb2cdd(?) payable {
    require calldata.size - 4 >= 64
    if profitorAddress != msg.sender:
        require msg.sender == owner
    stor11 = arg1
    stor12 = arg2
}

function sub_339d5c08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if profitorAddress != msg.sender:
        require msg.sender == owner
    stor20 = address(arg1)
}

function changeProfitor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    profitorAddress = arg1
}

function sub_4ee337a4(?) payable {
    require calldata.size - 4 >= 32
    if profitorAddress != msg.sender:
        require msg.sender == owner
    if sub_9b5d5c7a > !arg1:
        revert with 0, 17
    sub_9b5d5c7a += arg1
}

function changeIsDIS(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if profitorAddress != msg.sender:
        require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function setStakeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if profitorAddress != msg.sender:
        require msg.sender == owner
    stakeTokenAddress = arg1
    stor15 = block.timestamp
}

function sub_2f2caa75(?) payable {
    require calldata.size - 4 >= 32
    if profitorAddress != msg.sender:
        require msg.sender == owner
    if sub_102a2f8c > !arg1:
        revert with 0, 17
    sub_102a2f8c += arg1
    if leftMiningAmount > !arg1:
        revert with 0, 17
    leftMiningAmount += arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4b7285c7(?) payable {
    if profitorAddress != msg.sender:
        require msg.sender == owner
    staticcall stor20.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    call stor20.burn(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e79bb048(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if address(tokenToOwner[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: Cannot operate other people's Token'
    if maxPreMiningAmount <= leftMiningAmount:
        if sub_a4804661[arg1].field_256 and maxPreMiningAmount > -1 / sub_a4804661[arg1].field_256:
            revert with 0, 17
        if not totalAmount:
            revert with 0, 18
        return (sub_a4804661[arg1].field_256 * maxPreMiningAmount / totalAmount)
    if sub_a4804661[arg1].field_256 and leftMiningAmount > -1 / sub_a4804661[arg1].field_256:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    return (sub_a4804661[arg1].field_256 * leftMiningAmount / totalAmount)
}

function takeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if address(tokenToOwner[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: Cannot operate other people's Token'
    if not sub_026c77d0[msg.sender].field_768:
        revert with 0, 'no order'
    if totalPledge < 1:
        revert with 0, 17
    totalPledge--
    if totalAmount < sub_a4804661[arg1].field_256:
        revert with 0, 17
    totalAmount -= sub_a4804661[arg1].field_256
    if sub_026c77d0[msg.sender].field_768 != 1:
        if sub_026c77d0[msg.sender].field_768 < 1:
            revert with 0, 17
        sub_026c77d0[msg.sender].field_768--
    else:
        sub_026c77d0[msg.sender].field_768 = 0
        if sub_026c77d0[msg.sender].field_1024 >= stor21.length:
            revert with 0, 50
        stor21[stor18[msg.sender].field_1024] = 0
    address(tokenToOwner[arg1]) = 0
    sub_a4804661[arg1].field_0 = 0
    sub_a4804661[arg1].field_256 = 0
    sub_a4804661[arg1].field_512 = 0
    sub_a4804661[arg1].field_768 = 0
    sub_a4804661[arg1].field_1024 = 0
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TakeToken(msg.sender, arg1);
}

function pledgeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if not uint8(stor2.field_160):
        revert with 0, 'is disable'
    if leftMiningAmount <= 0:
        revert with 0, 'less token'
    if totalPledge > -2:
        revert with 0, 17
    if totalPledge + 1 > sub_9b5d5c7a:
        revert with 0, 'more token'
    if sub_026c77d0[msg.sender].field_0:
        if sub_026c77d0[msg.sender].field_768 > -2:
            revert with 0, 17
        sub_026c77d0[msg.sender].field_768++
        if sub_026c77d0[msg.sender].field_1024 >= stor21.length:
            revert with 0, 50
        stor21[stor18[msg.sender].field_1024] = 1
    else:
        stor21.length++
        stor55F4[stor21.length].field_0 = msg.sender
        stor55F4[stor21.length].field_160 = 1
        if size == -1:
            revert with 0, 17
        size++
        if stor21.length < 1:
            revert with 0, 17
        sub_026c77d0[msg.sender].field_0 = 1
        sub_026c77d0[msg.sender].field_256 = 0
        sub_026c77d0[msg.sender].field_512 = block.timestamp
        sub_026c77d0[msg.sender].field_768 = 1
        sub_026c77d0[msg.sender].field_1024 = stor21.length - 1
    sub_a4804661[arg1].field_0 = 1
    sub_a4804661[arg1].field_256 = 100
    sub_a4804661[arg1].field_512 = 0
    sub_a4804661[arg1].field_768 = block.timestamp
    sub_a4804661[arg1].field_1024 = block.timestamp
    uint256(tokenToOwner[arg1]) = msg.sender or Mask(96, 160, uint256(tokenToOwner[arg1]))
    if totalAmount > -101:
        revert with 0, 17
    totalAmount += 100
    if totalPledge > -2:
        revert with 0, 17
    totalPledge++
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd6cc6e96: arg1, msg.sender
}

function sub_1e31e555(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_026c77d0[address(arg1)].field_768 > test266151307():
        revert with 0, 65
    if not sub_026c77d0[address(arg1)].field_768:
        mem[(32 * sub_026c77d0[address(arg1)].field_768) + 292] = this.address
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * sub_026c77d0[address(arg1)].field_768) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var32002 - var32001 >= 32
        if var36002 >= var36001:
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 288] = 32
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 320] = sub_026c77d0[address(arg1)].field_768
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 352 len 32 * sub_026c77d0[address(arg1)].field_768] = mem[288 len 32 * sub_026c77d0[address(arg1)].field_768]
            return memory
              from (32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 288
               len (96 * sub_026c77d0[address(arg1)].field_768) + 64
        staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, var38001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var42002 - var42001 >= 32
        if address(tokenToOwner[var46001]) != address(arg1):
            if var50001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var60002 - var60001 >= 32
            # nil
        else:
            if var48003 >= sub_026c77d0[address(arg1)].field_768:
                revert with 0, 50
            if var50006 == -1:
                revert with 0, 17
            if var52001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var62002 - var62001 >= 32
            # nil
    else:
        mem[288 len 32 * sub_026c77d0[address(arg1)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(arg1)].field_768]
        mem[(32 * sub_026c77d0[address(arg1)].field_768) + 292] = this.address
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * sub_026c77d0[address(arg1)].field_768) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var33002 - var33001 >= 32
        if var37002 >= var37001:
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 288] = 32
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 320] = sub_026c77d0[address(arg1)].field_768
            mem[(32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 352 len 32 * sub_026c77d0[address(arg1)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(arg1)].field_768]
            return memory
              from (32 * sub_026c77d0[address(arg1)].field_768) + ceil32(return_data.size) + 288
               len (96 * sub_026c77d0[address(arg1)].field_768) + 64
        staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, var39001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var43002 - var43001 >= 32
        if address(tokenToOwner[var47001]) != address(arg1):
            if var51001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var61002 - var61001 >= 32
            # nil
        else:
            if var49003 >= sub_026c77d0[address(arg1)].field_768:
                revert with 0, 50
            if var51006 == -1:
                revert with 0, 17
            if var53001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var63002 - var63001 >= 32
            # nil
}

function takeAllToken() payable {
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if not sub_026c77d0[msg.sender].field_768:
        revert with 0, 'no order'
    if sub_026c77d0[msg.sender].field_1024 >= stor21.length:
        revert with 0, 50
    stor21[stor18[msg.sender].field_1024] = 0
    if totalPledge < sub_026c77d0[msg.sender].field_768:
        revert with 0, 17
    totalPledge -= sub_026c77d0[msg.sender].field_768
    if sub_026c77d0[address(msg.sender)].field_768 > test266151307():
        revert with 0, 65
    if not sub_026c77d0[address(msg.sender)].field_768:
        mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var38002 - var38001 >= 32
        if var42002 >= var42001:
            idx = 0
            while idx < sub_026c77d0[address(msg.sender)].field_768:
                if idx >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 288]
                mem[32] = 17
                if address(tokenToOwner[mem[(32 * idx) + 288]]) == msg.sender:
                    if sub_026c77d0[msg.sender].field_768 < 1:
                        revert with 0, 17
                    sub_026c77d0[msg.sender].field_768--
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    _541 = mem[(32 * idx) + 288]
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 292] = this.address
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = _541
                    require ext_code.size(stakeTokenAddress)
                    call stakeTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _541
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if totalAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    totalAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    address(tokenToOwner[mem[(32 * idx) + 288]]) = 0
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    sub_a4804661[mem[(32 * idx) + 288]].field_0 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_256 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_768 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = msg.sender
            emit 0xf553bf94: msg.sender, Array(len=sub_026c77d0[address(msg.sender)].field_768, data=mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768])
        staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, var44001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var48002 - var48001 >= 32
        if address(tokenToOwner[var52001]) != msg.sender:
            if var56001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var66002 - var66001 >= 32
            # nil
        else:
            if var54003 >= sub_026c77d0[address(msg.sender)].field_768:
                revert with 0, 50
            if var56006 == -1:
                revert with 0, 17
            if var58001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var68002 - var68001 >= 32
            # nil
    else:
        mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(msg.sender)].field_768]
        mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
        staticcall stakeTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var39002 - var39001 >= 32
        if var43002 >= var43001:
            idx = 0
            while idx < sub_026c77d0[address(msg.sender)].field_768:
                if idx >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 288]
                mem[32] = 17
                if address(tokenToOwner[mem[(32 * idx) + 288]]) == msg.sender:
                    if sub_026c77d0[msg.sender].field_768 < 1:
                        revert with 0, 17
                    sub_026c77d0[msg.sender].field_768--
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    _545 = mem[(32 * idx) + 288]
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 292] = this.address
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = _545
                    require ext_code.size(stakeTokenAddress)
                    call stakeTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _545
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if totalAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    totalAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    address(tokenToOwner[mem[(32 * idx) + 288]]) = 0
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    sub_a4804661[mem[(32 * idx) + 288]].field_0 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_256 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_768 = 0
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = msg.sender
            emit 0xf553bf94: msg.sender, Array(len=sub_026c77d0[address(msg.sender)].field_768, data=mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768])
        staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, var45001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var49002 - var49001 >= 32
        if address(tokenToOwner[var53001]) != msg.sender:
            if var57001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var67002 - var67001 >= 32
            # nil
        else:
            if var55003 >= sub_026c77d0[address(msg.sender)].field_768:
                revert with 0, 50
            if var57006 == -1:
                revert with 0, 17
            if var59001 == -1:
                revert with 0, 17
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var69002 - var69001 >= 32
            # nil
}

function sub_7c5dc1f9(?) payable {
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if not sub_026c77d0[msg.sender].field_768:
        revert with 0, 'no order'
    if sub_026c77d0[address(msg.sender)].field_768 > test266151307():
        revert with 0, 65
    if maxPreMiningAmount <= leftMiningAmount:
        if not sub_026c77d0[address(msg.sender)].field_768:
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var32002 - var32001 >= 32
            if var36002 >= var36001:
                idx = 0
                s = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and maxPreMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if s > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount)
                    continue 
                return s
            staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, var38001
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var42002 - var42001 >= 32
            if address(tokenToOwner[var46001]) != msg.sender:
                if var50001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var60002 - var60001 >= 32
                # nil
            else:
                if var48003 >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                if var50006 == -1:
                    revert with 0, 17
                if var52001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var62002 - var62001 >= 32
                # nil
        else:
            mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(msg.sender)].field_768]
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var33002 - var33001 >= 32
            if var37002 >= var37001:
                idx = 0
                s = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and maxPreMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if s > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount)
                    continue 
                return s
            staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, var39001
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var43002 - var43001 >= 32
            if address(tokenToOwner[var47001]) != msg.sender:
                if var51001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var61002 - var61001 >= 32
                # nil
            else:
                if var49003 >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                if var51006 == -1:
                    revert with 0, 17
                if var53001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var63002 - var63001 >= 32
                # nil
    else:
        if not sub_026c77d0[address(msg.sender)].field_768:
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var33002 - var33001 >= 32
            if var37002 >= var37001:
                idx = 0
                s = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and leftMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if s > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount)
                    continue 
                return s
            staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, var39001
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var43002 - var43001 >= 32
            if address(tokenToOwner[var47001]) != msg.sender:
                if var51001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var61002 - var61001 >= 32
                # nil
            else:
                if var49003 >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                if var51006 == -1:
                    revert with 0, 17
                if var53001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var63002 - var63001 >= 32
                # nil
        else:
            mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(msg.sender)].field_768]
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var34002 - var34001 >= 32
            if var38002 >= var38001:
                idx = 0
                s = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and leftMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if s > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount)
                    continue 
                return s
            staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, var40001
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var44002 - var44001 >= 32
            if address(tokenToOwner[var48001]) != msg.sender:
                if var52001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var62002 - var62001 >= 32
                # nil
            else:
                if var50003 >= sub_026c77d0[address(msg.sender)].field_768:
                    revert with 0, 50
                if var52006 == -1:
                    revert with 0, 17
                if var54001 == -1:
                    revert with 0, 17
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var64002 - var64001 >= 32
                # nil
}

function takeProfitAll() payable {
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if not sub_026c77d0[msg.sender].field_768:
        revert with 0, 'no order'
    if block.timestamp < stor15:
        revert with 0, 17
    if block.timestamp - stor15 > stor14:
        revert with 0, 'less time'
    if block.timestamp < sub_026c77d0[msg.sender].field_512:
        revert with 0, 17
    if block.timestamp - sub_026c77d0[msg.sender].field_512 <= stor13:
        revert with 0, 'less time'
    mem[0] = msg.sender
    mem[128] = sub_026c77d0[address(msg.sender)].field_256
    mem[160] = sub_026c77d0[address(msg.sender)].field_512
    mem[192] = sub_026c77d0[address(msg.sender)].field_768
    mem[224] = sub_026c77d0[address(msg.sender)].field_1024
    if sub_026c77d0[address(msg.sender)].field_768 > test266151307():
        revert with 0, 65
    mem[256] = sub_026c77d0[address(msg.sender)].field_768
    if leftMiningAmount >= maxPreMiningAmount:
        if not sub_026c77d0[address(msg.sender)].field_768:
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var46002 - var46001 >= 32
            if var50002 < var50001:
                staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, var52001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var56002 - var56001 >= 32
                if address(tokenToOwner[var60001]) != msg.sender:
                    if var64001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var74002 - var74001 >= 32
                    # nil
                else:
                    if var62003 >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if var64006 == -1:
                        revert with 0, 17
                    if var66001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var76002 - var76001 >= 32
                    # nil
            else:
                idx = 0
                s = 0
                t = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= mem[256]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = block.timestamp
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and maxPreMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if sub_a4804661[mem[(32 * idx) + 288]].field_512 > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 += sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount
                    if leftMiningAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount:
                        revert with 0, 17
                    leftMiningAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount
                    if t > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    if s >= bool(sub_026c77d0[address(msg.sender)].field_0):
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[(32 * idx) + 288]
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + (sub_a4804661[mem[0]].field_256 * maxPreMiningAmount / totalAmount)
                    continue 
                if sub_026c77d0[msg.sender].field_256 > !t:
                    revert with 0, 17
                sub_026c77d0[msg.sender].field_256 += t
                sub_026c77d0[msg.sender].field_512 = block.timestamp
                if t and stor11 > -1 / t:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = t * stor11 / stor12
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 68
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 388] = 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor20):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 520] = 0
                call stor20 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_026c77d0[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len bool(sub_026c77d0[address(msg.sender)].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_026c77d0[address(msg.sender)].field_0:
                        require bool(sub_026c77d0[address(msg.sender)].field_0) >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 516] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 548] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 580 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
                else:
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = return_data.size
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] == bool(mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484])
                        if not mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 549] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 581 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
        else:
            mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(msg.sender)].field_768]
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var47002 - var47001 >= 32
            if var51002 < var51001:
                staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, var53001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var57002 - var57001 >= 32
                if address(tokenToOwner[var61001]) != msg.sender:
                    if var65001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var75002 - var75001 >= 32
                    # nil
                else:
                    if var63003 >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if var65006 == -1:
                        revert with 0, 17
                    if var67001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var77002 - var77001 >= 32
                    # nil
            else:
                idx = 0
                s = 0
                t = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= mem[256]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = block.timestamp
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and maxPreMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if sub_a4804661[mem[(32 * idx) + 288]].field_512 > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 += sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount
                    if leftMiningAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount:
                        revert with 0, 17
                    leftMiningAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount
                    if t > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * maxPreMiningAmount / totalAmount):
                        revert with 0, 17
                    if s >= bool(sub_026c77d0[address(msg.sender)].field_0):
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[(32 * idx) + 288]
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + (sub_a4804661[mem[0]].field_256 * maxPreMiningAmount / totalAmount)
                    continue 
                if sub_026c77d0[msg.sender].field_256 > !t:
                    revert with 0, 17
                sub_026c77d0[msg.sender].field_256 += t
                sub_026c77d0[msg.sender].field_512 = block.timestamp
                if t and stor11 > -1 / t:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = t * stor11 / stor12
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 68
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 388] = 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor20):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 520] = 0
                call stor20 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_026c77d0[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len bool(sub_026c77d0[address(msg.sender)].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_026c77d0[address(msg.sender)].field_0:
                        require bool(sub_026c77d0[address(msg.sender)].field_0) >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 516] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 548] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 580 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
                else:
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = return_data.size
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] == bool(mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484])
                        if not mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 549] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 581 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
    else:
        if not sub_026c77d0[address(msg.sender)].field_768:
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var47002 - var47001 >= 32
            if var51002 < var51001:
                staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, var53001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var57002 - var57001 >= 32
                if address(tokenToOwner[var61001]) != msg.sender:
                    if var65001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var75002 - var75001 >= 32
                    # nil
                else:
                    if var63003 >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if var65006 == -1:
                        revert with 0, 17
                    if var67001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var77002 - var77001 >= 32
                    # nil
            else:
                idx = 0
                s = 0
                t = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= mem[256]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = block.timestamp
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and leftMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if sub_a4804661[mem[(32 * idx) + 288]].field_512 > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 += sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount
                    if leftMiningAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount:
                        revert with 0, 17
                    leftMiningAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount
                    if t > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    if s >= bool(sub_026c77d0[address(msg.sender)].field_0):
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[(32 * idx) + 288]
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + (sub_a4804661[mem[0]].field_256 * leftMiningAmount / totalAmount)
                    continue 
                if sub_026c77d0[msg.sender].field_256 > !t:
                    revert with 0, 17
                sub_026c77d0[msg.sender].field_256 += t
                sub_026c77d0[msg.sender].field_512 = block.timestamp
                if t and stor11 > -1 / t:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = t * stor11 / stor12
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 68
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 388] = 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor20):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 520] = 0
                call stor20 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_026c77d0[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len bool(sub_026c77d0[address(msg.sender)].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_026c77d0[address(msg.sender)].field_0:
                        require bool(sub_026c77d0[address(msg.sender)].field_0) >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 516] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 548] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 580 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
                else:
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = return_data.size
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] == bool(mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484])
                        if not mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 549] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 581 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
        else:
            mem[288 len 32 * sub_026c77d0[address(msg.sender)].field_768] = call.data[calldata.size len 32 * sub_026c77d0[address(msg.sender)].field_768]
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 292] = this.address
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var48002 - var48001 >= 32
            if var52002 < var52001:
                staticcall stakeTokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, var54001
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require var58002 - var58001 >= 32
                if address(tokenToOwner[var62001]) != msg.sender:
                    if var66001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var76002 - var76001 >= 32
                    # nil
                else:
                    if var64003 >= sub_026c77d0[address(msg.sender)].field_768:
                        revert with 0, 50
                    if var66006 == -1:
                        revert with 0, 17
                    if var68001 == -1:
                        revert with 0, 17
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require var78002 - var78001 >= 32
                    # nil
            else:
                idx = 0
                s = 0
                t = 0
                while idx < sub_026c77d0[address(msg.sender)].field_768:
                    if idx >= mem[256]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 288]
                    mem[32] = 16
                    if not sub_a4804661[mem[(32 * idx) + 288]].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if block.timestamp < sub_a4804661[mem[(32 * idx) + 288]].field_1024:
                        revert with 0, 17
                    if block.timestamp - sub_a4804661[mem[(32 * idx) + 288]].field_1024 < stor13:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    sub_a4804661[mem[(32 * idx) + 288]].field_1024 = block.timestamp
                    if sub_a4804661[mem[(32 * idx) + 288]].field_256 and leftMiningAmount > -1 / sub_a4804661[mem[(32 * idx) + 288]].field_256:
                        revert with 0, 17
                    if not totalAmount:
                        revert with 0, 18
                    if sub_a4804661[mem[(32 * idx) + 288]].field_512 > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    sub_a4804661[mem[(32 * idx) + 288]].field_512 += sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount
                    if leftMiningAmount < sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount:
                        revert with 0, 17
                    leftMiningAmount -= sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount
                    if t > !(sub_a4804661[mem[(32 * idx) + 288]].field_256 * leftMiningAmount / totalAmount):
                        revert with 0, 17
                    if s >= bool(sub_026c77d0[address(msg.sender)].field_0):
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[(32 * idx) + 288]
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + (sub_a4804661[mem[0]].field_256 * leftMiningAmount / totalAmount)
                    continue 
                if sub_026c77d0[msg.sender].field_256 > !t:
                    revert with 0, 17
                sub_026c77d0[msg.sender].field_256 += t
                sub_026c77d0[msg.sender].field_512 = block.timestamp
                if t and stor11 > -1 / t:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324] = msg.sender
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 356] = t * stor11 / stor12
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 288] = 68
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 388] = 32
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor20):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0
                mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 520] = 0
                call stor20 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, t * stor11 / stor12, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_026c77d0[address(msg.sender)].field_0:
                            revert with memory
                              from 128
                               len bool(sub_026c77d0[address(msg.sender)].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_026c77d0[address(msg.sender)].field_0:
                        require bool(sub_026c77d0[address(msg.sender)].field_0) >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 516] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 548] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 580 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
                else:
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 452] = return_data.size
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484] == bool(mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484])
                        if not mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = msg.sender
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = t * stor11 / stor12
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 96
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 549] = bool(sub_026c77d0[address(msg.sender)].field_0)
                    mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 581 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)] = mem[128 len 32 * bool(sub_026c77d0[address(msg.sender)].field_0)]
                    emit 0x52e5d210: mem[(32 * sub_026c77d0[address(msg.sender)].field_768) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len (32 * bool(sub_026c77d0[address(msg.sender)].field_0)) + 128]
}



}
