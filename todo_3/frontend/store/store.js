import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';
import { logger } from 'redux-logger';
import { thunkz } from '../middleware/thunk';


const configureStore = (preloadedState = {}) => {
  const store = createStore(rootReducer, preloadedState, applyMiddleware(thunkz,logger));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

export default configureStore;
