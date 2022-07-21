contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
uint256 minCap;
uint256 maxCap;
uint256 sub_95f26ce2;
uint256 sub_1c5aeef7;
uint256 sub_cdac724d;
uint256 sub_0c46517c;
uint256 start_time;
uint256 end_time;
address stor12;
mapping of uint256 stor13;

function sub_0c46517c(?) {
    return sub_0c46517c
}

function end_time() {
    return end_time
}

function sub_1c5aeef7(?) {
    return sub_1c5aeef7
}

function maxCap() {
    return maxCap
}

function minCap() {
    return minCap
}

function start_time() {
    return start_time
}

function owner() {
    return owner
}

function sub_95f26ce2(?) {
    return sub_95f26ce2
}

function sub_cdac724d(?) {
    return sub_cdac724d
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxCap = arg1
    emit 0x5262bfa2: arg1
}

function setMinCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minCap = arg1
    emit 0x48f8ec0f: arg1
}

function sub_12f5ddad(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cdac724d = arg1
    emit 0x429a98c8: arg1, 1
}

function sub_eb2d624f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0c46517c = arg1
    emit 0x429a98c8: arg1, 0
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    end_time = arg1
    emit SetEndTime(arg1);
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    start_time = arg1
    emit SetStartTime(arg1);
}

function sub_611ef887(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg1)
    emit 0x5e294776: address(arg1)
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

function getLatestPrice() {
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_d4a16616(?) {
    require calldata.size - 4 >= 32
    if not sub_cdac724d:
        revert with 0, 18
    if stor13[msg.sender] > !arg1:
        revert with 0, 17
    if stor13[msg.sender] + arg1 < sub_95f26ce2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PresaleFactory: The price is not allowed for presale.'
    if stor13[msg.sender] > !arg1:
        revert with 0, 17
    if stor13[msg.sender] + arg1 > sub_1c5aeef7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PresaleFactory: The price is not allowed for presale.'
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor12, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 / sub_cdac724d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor13[msg.sender] > !arg1:
        revert with 0, 17
    stor13[msg.sender] += arg1
    emit 0x591accc0: this.address, msg.sender, arg1 / sub_cdac724d
}

function sub_5e256286(?) payable {
    if msg.value <= 0:
        revert with 0, 'Insufficient AVAX amount'
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and msg.value > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not sub_cdac724d:
        revert with 0, 18
    if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
        revert with 0, 17
    if stor13[msg.sender] + (ext_call.return_data[32] * msg.value / 10^18) < sub_95f26ce2:
        revert with 0, 'PresaleFactory: The price is not allowed for presale.'
    if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
        revert with 0, 17
    if stor13[msg.sender] + (ext_call.return_data[32] * msg.value / 10^18) > sub_1c5aeef7:
        revert with 0, 'PresaleFactory: The price is not allowed for presale.'
    call stor12 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[32] * msg.value / 10^18 / sub_cdac724d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
        revert with 0, 17
    stor13[msg.sender] += ext_call.return_data[32] * msg.value / 10^18
    emit 0x591accc0: this.address, msg.sender, ext_call.return_data[32] * msg.value / 10^18 / sub_cdac724d
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x763265de(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xae3b748d(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x763265de(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    maxCap = arg1
                    emit 0x5262bfa2: arg1
                if unknown_0x834ee417(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return start_time
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x8e15f473(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x95f26ce2(?????):
                    require not msg.value
                    return sub_95f26ce2
                require not msg.value
                require ext_code.size(stor1)
                staticcall stor1.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                return ext_call.return_data[32]
            if unknown_0xae3b748d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                minCap = arg1
                emit 0x48f8ec0f: arg1
            else:
                if unknown_0xccb98ffc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    end_time = arg1
                    emit SetEndTime(arg1);
                else:
                    if unknown_0xcdac724d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_cdac724d
                    if uint32(call.func_hash) >> 224 != unknown_0xd4a16616(?????):
                        if unknown_0xeb2d624f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_0c46517c = arg1
                            emit 0x429a98c8: arg1, 0
                        else:
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(arg1):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                owner = address(arg1)
                                emit OwnershipTransferred(owner, address(arg1));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not sub_cdac724d:
                            revert with 0, 18
                        if stor13[msg.sender] > !arg1:
                            revert with 0, 17
                        if stor13[msg.sender] + arg1 < sub_95f26ce2:
                            revert with 0, 'PresaleFactory: The price is not allowed for presale.'
                        if stor13[msg.sender] > !arg1:
                            revert with 0, 17
                        if stor13[msg.sender] + arg1 > sub_1c5aeef7:
                            revert with 0, 'PresaleFactory: The price is not allowed for presale.'
                        require ext_code.size(stor3)
                        call stor3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, stor12, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 / sub_cdac724d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor13[msg.sender] > !arg1:
                            revert with 0, 17
                        stor13[msg.sender] += arg1
                        emit 0x591accc0: this.address, msg.sender, arg1 / sub_cdac724d
        else:
            if unknown_0x3e0a322d(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x0c46517c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0c46517c
                if uint32(call.func_hash) >> 224 != unknown_0x12f5ddad(?????):
                    if unknown_0x16243356(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return end_time
                    if unknown_0x1c5aeef7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_1c5aeef7
                    if uint32(call.func_hash) >> 224 != unknown_0x23548b8b(?????):
                    require not msg.value
                    return maxCap
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_cdac724d = arg1
                emit 0x429a98c8: arg1, 1
            else:
                if unknown_0x3e0a322d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    start_time = arg1
                    emit SetStartTime(arg1);
                else:
                    if unknown_0x3fa615b0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return minCap
                    if uint32(call.func_hash) >> 224 != unknown_0x5e256286(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x611ef887(?????):
                            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                owner = 0
                                emit OwnershipTransferred(owner, 0);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor12 = address(arg1)
                            emit 0x5e294776: address(arg1)
                    else:
                        if msg.value <= 0:
                            revert with 0, 'Insufficient AVAX amount'
                        require ext_code.size(stor1)
                        staticcall stor1.latestRoundData() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] and msg.value > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if not sub_cdac724d:
                            revert with 0, 18
                        if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
                            revert with 0, 17
                        if stor13[msg.sender] + (ext_call.return_data[32] * msg.value / 10^18) < sub_95f26ce2:
                            revert with 0, 'PresaleFactory: The price is not allowed for presale.'
                        if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
                            revert with 0, 17
                        if stor13[msg.sender] + (ext_call.return_data[32] * msg.value / 10^18) > sub_1c5aeef7:
                            revert with 0, 'PresaleFactory: The price is not allowed for presale.'
                        call stor12 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[32] * msg.value / 10^18 / sub_cdac724d
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor13[msg.sender] > !(ext_call.return_data[32] * msg.value / 10^18):
                            revert with 0, 17
                        stor13[msg.sender] += ext_call.return_data[32] * msg.value / 10^18
                        emit 0x591accc0: this.address, msg.sender, ext_call.return_data[32] * msg.value / 10^18 / sub_cdac724d
}



}
