contract main {




// =====================  Runtime code  =====================


array of uint256 coordinatorEndpoint;

function getCoordinatorEndpoint(address arg1) payable {
    return coordinatorEndpoint[address(arg1)][0 len coordinatorEndpoint[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function sub_5b2388be(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    coordinatorEndpoint[msg.sender] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        coordinatorEndpoint[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while coordinatorEndpoint[msg.sender].length + 31 / 32 > idx:
        coordinatorEndpoint[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    emit CoordinatorEndpointSet(msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]));
}



}
